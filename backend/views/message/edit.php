<?php


use yii\helpers\Html;
use yii\helpers\Url;
use common\core\ActiveForm;
use common\helpers\ArrayHelper;
//use backend\models\Train;
//use backend\models\Shop;

/* @var $this yii\web\View */
/* @var $model backend\models\Menu */
/* @var $form ActiveForm */

/* ===========================以下为本页配置信息================================= */
/* 页面基本属性 */
$this->title = '发短信';
$this->params['title_sub'] = '';  // 在\yii\base\View中有$params这个可以在视图模板中共享的参数

?>

<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="caption font-red-sunglo">
            <i class="icon-settings font-red-sunglo"></i>
            <span class="caption-subject bold uppercase"> 短信配置</span>
        </div>
    </div>
    <div class="portlet-body form">
        <!-- 这里注意了，不能使用pjax，因为第三方库中有行内js，会导致js加载失败 -->
        <!-- BEGIN FORM-->
        <?php $form = ActiveForm::begin([
            'options'=>[
                'class'=>"form-aaa"
            ]
        ]); ?>

        <div class="form-group field-message-phonenumbers">
            <div><label class="" for="message-phonenumbers">手机号码</label><span class="help-inline">（多个号码之间","隔开）</span></div><textarea id="message-phonenumbers" class="form-control c-md-7" name="Message[phonenumbers]" rows="5"></textarea><span class="help-block"></span>
            <div style="margin-bottom:5px;">
                <span class="btn red btn-outline btn-file">
                    <span class="fileinput-new"> 上传图片 </span>
                    <input type="hidden" id="article-cover" name="Article[cover]" value=""  style="position: absolute;top: 0;right: 0;width: 100%;height: 100%;margin: 0;font-size: 23px;cursor: pointer;filter: alpha(opacity=0);opacity: 0;direction: ltr;">
                    <input type="file" name="..." class="file_buttom1"   style="position: absolute;top: 0;right: 0;width: 100%;height: 100%;margin: 0;font-size: 23px;cursor: pointer;filter: alpha(opacity=0);opacity: 0;direction: ltr;">
                </span>
            </div>
        </div>


        <div id="ClickMe" style="cursor: pointer; width: 100px; height: 25px; background-color: #00ff00; border-radius: 5px;">Click Me!</div>
        <form id="formUpload" name="formUploadFile" method="POST" enctype="multipart/form-data">
            <input id="fileUpload" type="file" name="upload" style="display: none" />
        </form>


        <div class="form-group field-message-content">
            <div><label class="" for="message-content">短信内容</label><span class="help-inline"></span></div><textarea id="message-content" class="form-control c-md-7" name="Message[content]" rows="5" onkeyup="checkLen(this)"></textarea><span class="help-block"></span>
            <div class="help-inline">您已经输入 <span id="count">0</span> 个文字</div>
        </div>

        <?=$form->field($model, 'send_time')->widget(\kartik\widgets\DateTimePicker::classname(),[
            'language' => 'zh-CN',
            'type' => \kartik\widgets\DateTimePicker::TYPE_INPUT,
            'value' => '2016-07-15',
            'options' => ['class' => 'form-control'],
            'pluginOptions' => [
                'autoclose'=>true,
                'format' => 'yyyy-mm-dd hh:ii',
            ]
        ],['class' => 'c-md-2'])->label('发送时间')->hint('')?>
        
        <div class="form-actions">
            <?= Html::submitButton('<i class="icon-ok"></i> 提交', ['class' => 'btn blue ajax-post','target-form'=>'form-aaa']) ?>
            <?= Html::button('取消', ['class' => 'btn','onclick'=>'JavaScript:history.go(-1)']) ?>
        </div>
        
        <?php ActiveForm::end(); ?>

        <!-- END FORM-->
    </div>
</div>

<!-- 定义数据块 -->
<?php $this->beginBlock('test'); ?>

$(function() {
    /* 子导航高亮 */
    highlight_subnav('message/add');

    $("a.append_").bind('click',function(){
    $('#InWaitDialog').show();
    //						var batch_code =  $("input[name='batch_code']").val();
    var category =  $("input[name='category_a']").val();
    can_up = false;
    $.ajaxFileUpload({
    url:'/phone/batch/ajax-upload-file?category='+category,
    type : 'post',
    secureuri :false,
    fileElementId :'file_upload',
    dataType : 'JSON',
    beforeSend: function() {
    alert('12');
    progress.show();
    var percentVal = '0%';
    bar.width(percentVal);
    percent.html(percentVal);
    },
    progressall: function (e, data) {
    progress.show();
    var progress = parseInt(data.loaded / data.total * 100, 10);
    bar.width(progress + '%');
    percent.html(progress + '%');
    },
    uploadProgress: function(event, position, total, percentComplete) {
    var percentVal = percentComplete + '%';
    bar.width(percentVal);
    percent.html(percentVal);
    },

    success : function (data){
    can_up = true;
    $('#InWaitDialog').hide();
    data = eval("("+data+")");
    if(data.state){
    alertify.success(data.msg);
    setTimeout(function(){location.reload();},3000);
    }else{
    alertify.error(data.msg);
    }
    }
    })
    });

});

function checkLen(obj)
{
var curr = obj.value.length;
document.getElementById("count").innerHTML = curr.toString();
}

// form 内的文件选择内容被改变则立即提交
$('#fileUpload').on('change', function()
{
// 当 file 框内容改变则提交 form
$('#formUpload').submit();
console.log('formUpload to submit');
});

// 定义的热点被单击则打开文件选择框
$('#ClickMe').on('click', function()
{
UploadFileOnSelect();
console.log('object on click');
});

// 选需要上载的图片 上载完毕清除 form
function UploadFileOnSelect()
{
// 打开文件选择框
console.log('select file');
var input = document.getElementById("fileUpload");
input.click();
// 提交完毕后初始化 form
$('#formUpload').resetForm();
console.log('selected file ' + input.value);
}

// jquery.form upload
$('#formUpload').ajaxForm({
// 设置返回格式
dataType : 'json',
// 接收文件的 struts2 action 或者是 servlet 路径
url : '/struts/uploadMultfile',
success : function(data)
{
// 返回成功信息
console.log('success: ' + data);
},
uploadProgress : function(event, position, total, percentComplete)
{
// 实时进度
console.log('uploadProgress: ', percentComplete + '%', position, 'max:', total);
},
error : function(data)
{
// 返回错误信息
console.log('error: ' + data);
}
});

<?php $this->endBlock() ?>
<!-- 将数据块 注入到视图中的某个位置 -->
<?php $this->registerJs($this->blocks['test'], \yii\web\View::POS_END); ?>
