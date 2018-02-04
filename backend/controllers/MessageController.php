<?php

namespace backend\controllers;

use Yii;
use backend\models\Message;
use backend\models\search\MessageSearch;
use common\helpers\ArrayHelper;
use common\helpers\FuncHelper;
use yii\web\NotFoundHttpException;
use backend\models\UploadForm;
use yii\web\UploadedFile;

/**
 * 订单控制器
 * @author longfei <phphome@qq.com>
 */
class MessageController extends BaseController
{
    /**
     * ---------------------------------------
     * 列表页
     * ---------------------------------------
     */
    public function init(){
        $this->enableCsrfValidation = false;
    }

    public function actionIndex()
    {
        /* 添加当前位置到cookie供后续跳转调用 */
        $this->setForward();//phpinfo();

        $params = Yii::$app->request->getQueryParams();

        $searchModel = new MessageSearch();
        $dataProvider = $searchModel->search($params); //var_dump($dataProvider->query->all());exit();

        /* 导出excel */
        if (isset($params['action']) && $params['action'] == 'export') {
            $this->export($dataProvider->query->all());
            return false;
        }

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'searchModel' => $searchModel,
        ]);
    }

    /**
     * ---------------------------------------
     * 添加
     * ---------------------------------------
     */
    public function actionAdd()
    {
        $model = $this->findModel(0);
        if (Yii::$app->request->isPost) {

            $data = Yii::$app->request->post('Message');
            $data['send_time'] = strtotime($data['send_time']);
            /* 格式化extend值，为空或数组序列化 */
            if (isset($data['extend'])) {
                $tmp = FuncHelper::parse_field_attr($data['extend']);
                if (is_array($tmp)) {
                    $data['extend'] = serialize($tmp);
                } else {
                    $data['extend'] = '';
                }
            }
            /* 表单数据加载、验证、数据库操作 */
            if ($this->saveRow($model, $data)) {
                $this->success('操作成功', $this->getForward());
            } else {
                $this->error('操作错误');
            }
        }

        /* 获取模型默认数据 */
        $model->loadDefaultValues();
        /* 渲染模板 */
        return $this->render('edit', [
            'model' => $model,
        ]);
    }

    /**
     * ---------------------------------------
     * 编辑
     * ---------------------------------------
     */
    public function actionEdit()
    {
        $id = Yii::$app->request->get('id', 0);
        $model = $this->findModel($id);

        if (Yii::$app->request->isPost) {
            $data = Yii::$app->request->post('Message');//var_dump($data);exit();
            //$data['update_time'] = time();
            $data['start_time'] = strtotime($data['start_time']);
            $data['end_time'] = strtotime($data['end_time']);
            $data['pay_time'] = strtotime($data['pay_time']);
            /* 格式化extend值，为空或数组序列化 */
            if (isset($data['extend'])) {
                $tmp = FuncHelper::parse_field_attr($data['extend']);
                if (is_array($tmp)) {
                    $data['extend'] = serialize($tmp);
                } else {
                    $data['extend'] = '';
                }
            }
            /* 表单数据加载、验证、数据库操作 */
            if ($this->saveRow($model, $data)) {
                $this->success('操作成功', $this->getForward());
            } else {
                $this->error('操作错误');
            }
        }
        $model->start_time = date('Y-m-d H:i', $model->start_time);
        $model->end_time = date('Y-m-d H:i', $model->end_time);
        /* 渲染模板 */
        return $this->render('edit', [
            'model' => $model,
        ]);
    }

    /**
     * ---------------------------------------
     * 删除或批量删除
     * ---------------------------------------
     */
    public function actionDelete()
    {
        $model = $this->findModel(0);
        if ($this->delRow($model, 'id')) {
            $this->success('删除成功', $this->getForward());
        } else {
            $this->error('删除失败！');
        }
    }

    /**
     * ---------------------------------------
     * 导出excel
     * ---------------------------------------
     */
    public function export($data)
    {
        /*$data = Message::find()->where(['pay_status' => 1])
            ->andWhere(['status'=>1])
            ->orderBy('message_id DESC')
            ->asArray()->all();*/
        $arr = [];
        $title = ['message_id', '订单号', '用户ID', '姓名', '电话', '身份证', '商品类型', '套餐ID', '商品ID', '商品名', '起租时间', '退租时间',
            '数量', '价格', '支付状态', '支付时间', '支付类型', '支付途径', '下单时间', '状态'];
        if ($data) {
            foreach ($data as $key => $value) {
                $arr[$key] = $value;
                $arr[$key]['start_time'] = date('Y-m-d H:i', $value['start_time']);
                $arr[$key]['end_time'] = date('Y-m-d H:i', $value['end_time']);
                $arr[$key]['pay_time'] = $value['pay_time'] ? date('Y-m-d H:i', $value['end_time']) : 0;
                $arr[$key]['create_time'] = $value['create_time'] ? date('Y-m-d H:i', $value['create_time']) : 0;
                $arr[$key]['pay_status'] = Yii::$app->params['pay_status'][$value['pay_status']];
                $arr[$key]['pay_type'] = Yii::$app->params['pay_type'][$value['pay_type']];
                $arr[$key]['pay_source'] = Yii::$app->params['pay_source'][$value['pay_source']];
                $arr[$key]['status'] = '订单正常';
            }
        }

        FuncHelper::exportexcel($arr, $title);
    }

    /**
     * Finds the Article model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Order the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if ($id == 0) {
            return new Message();
        }
        if (($model = Message::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }


    public function actionGetAjax(){
        set_time_limit(0);
        ini_set("memory_limit", "1024M");
        ini_set("post_max_size", "100M");
        ini_set("upload_max_filesize", "100M");
        setlocale(LC_ALL, 'zh_CN');

        $params=Yii::$app->request->post();

        print_r($_FILES);exit;
        $model = new UploadForm();
        if (Yii::$app->request->isPost) {
            $model->file = UploadedFile::getInstance($model, 'file');
            if ($model->file && $model->validate()) {
                if(!file_exists('data/upload/'.$uid))mkdir('data/upload/'.$uid);
                $path='data/upload/';
                if(!file_exists($path))mkdir($path);

                $filename=$params['id'].'.' . $model->file->extension;
                if($model->file->saveAs($path.$filename))
                    return ["result"=>"Success","url"=>$path.$filename];

                else return ["result"=>"Fail"];
            }
            return ["result"=>"ValidFail"];
        }
        return ["result"=>"PostFail"];
        $params=Yii::$app->request->post();
        print_r($params);exit;
        if(!Input::hasFile('fileUpload'))
            return json_encode(array('state'=>0,'msg'=>'文件不存在'));
        $file = Input::file('fileUpload');
        $tmpfile = $file->getRealPath();
        $filename = $file->getClientOriginalName();
        $ext = $file->getClientOriginalExtension();
        if(!in_array($ext,array('csv','txt'))) return json_encode(array('state'=>0,'msg'=>'上传文件格式错误'));
        $server_path = storage_path() . '/tmp/';
        $newfilename = microtime() . '.' . $ext;
        $target = $server_path . $newfilename;
        $file->move($server_path,$newfilename);
        $input = array();
        $i_c = $unicom_c = $mobile_c = $telecom_c = 0;
        if($category) {
            $category_exists = Category::getInfoByName($category);
            if ($category_exists) {
                $category = $category_exists['category_id'];
                $unicom_c = $category_exists['unicom'];
                $mobile_c = $category_exists['mobile'];
                $telecom_c = $category_exists['telecom'];
                $i_c = $category_exists['count'];
            } else {
                $input['name'] = $category;
                $re_category = Category::save($input);
                $category = $re_category;
                unset($input['name']);
            }
        }
        if($batch_code) {
            $info_exists = PhoneBatch::getInfoByCode($batch_code);
            if ($info_exists) {
                return json_encode(array('state'=>0,'msg'=>'批次Code已存在'));
            } else {
                $input['batch_code'] = $batch_code;
                $input['category'] = $category;
            }
        } else {
            return json_encode(array('state'=>0,'msg'=>'批次Code不能为空'));
        }
        $re_batch = PhoneBatch::save($input);


        $handle = fopen($target, 'r');
        $result = self::input_csv($handle); //解析csv
        $len_result = count($result);
        if($len_result==0){
            return json_encode(array('state'=>0,'msg'=>'没有任何数据'));
        }
        $i = 0;
        $j = 0;
        $unicom = $mobile = $telecom = 0;
//		$sql="INSERT IGNORE INTO m_phone_numbers (batch_id,phone_number,operator,city,address) VALUES"; //过滤重复数据
        $sql="INSERT INTO m_phone_numbers (batch_id,phone_number,operator,city,address) VALUES";
        for ($j = 1; $j < $len_result; $j++) { //循环获取各字段值
            if(self::validateMobile($result[$j][0])!==true) {
                $j++;
                continue;
            }
            $phone_number = isset($result[$j][0])?self::characet($result[$j][0]):''; //中文转码
            $phone_number_7 =  substr($phone_number,0,7);
            if (isset($result[$j][1]) && $result[$j][1]<>"") {
                $operator = self::characet($result[$j][1]);
            } elseif (Redis::exists("isp_".$phone_number_7)) {
                $operator = Redis::get("isp_".$phone_number_7);
            } else {
                $operator = '';
            }
            if (isset($result[$j][2]) && $result[$j][2]<>"") {
                $city = self::characet($result[$j][2]);
            } elseif (Redis::exists("province_".$phone_number_7)) {
                $city = Redis::get("province_".$phone_number_7);
            } else {
                $city = '';
            }
            switch ($operator) {
                case "联通":
                    $unicom++;
                    break;
                case "移动":
                    $mobile++;
                    break;
                case "电信":
                    $telecom++;
                    break;
                case "虚拟/联通":
                    $unicom++;
                    break;
                case "虚拟/移动":
                    $mobile++;
                    break;
                case "虚拟/电信":
                    $telecom++;
                    break;
            }
            $address = isset($result[$j][3])?self::characet($result[$j][3]):'';
            if ($phone_number==''&&$operator==''&&$city==''&&$address=='') continue;
            $tmpstr = "'". $re_batch ."','". $phone_number ."','". $operator ."','". $city ."','". $address ."'";
            $sql .= "(".$tmpstr."),";
            $j++;
        }
        fclose($handle); //关闭指针
        $sql = substr($sql,0,-1);   //去除最后的逗号
        DB::insert($sql);

        $search['batch_id'] = $re_batch;
        $info_num_count = PhoneNumbers::getCount($search);
        $i = $info_num_count;

        if ($i == 0) {
            PhoneBatch::del($re_batch);
            return json_encode(array('state'=>0,'msg'=>'批次添加失败,所有导入数据均已存在'));
        }
        $data = array();
        $data['batch_id'] = $re_batch;
        $data['unicom'] = $unicom;
        $data['mobile'] = $mobile;
        $data['telecom'] = $telecom;
        $data['count'] = $i;
        $res = PhoneBatch::save($data);
        $data_c = array();
        $data_c['category_id'] = $category;
        $data_c['count'] = $i_c + $i;
        $data_c['unicom'] = $unicom_c + $unicom;
        $data_c['mobile'] = $mobile_c + $mobile;
        $data_c['telecom'] = $telecom_c + $telecom;
        $res_c = Category::save($data_c);

        if($res){
            return json_encode(array("state"=>1,'msg'=>'批次添加成功,文件读取数据'.$j.'条,共实际导入数据'.$i.'条'));
        }else{
            return json_encode(array('state'=>0,'msg'=>'批次添加失败'));
        }
    }

}
