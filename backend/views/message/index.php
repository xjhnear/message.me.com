<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $model common\modelsgii\Message */
/* @var $dataProvider yii\data\ActiveDataProvider  */
/* @var $searchModel backend\models\search\MessageSearch */

/* ===========================以下为本页配置信息================================= */
/* 页面基本属性 */
$this->title = '短信管理';
$this->params['title_sub'] = '';  // 在\yii\base\View中有$params这个可以在视图模板中共享的参数

/* 先要注册表格所须的资源 */
\backend\assets\TablesAsset::register($this);

$columns = [
    [
        'class' => \common\core\CheckboxColumn::className(),
        'name'  => 'id',
        'options' => ['width' => '20px;'],
        'checkboxOptions' => function ($model, $key, $index, $column) {
            return ['value' => $key,'label'=>'<span></span>','labelOptions'=>['class' =>'mt-checkbox mt-checkbox-outline','style'=>'padding-left:19px;']];
        }
    ],
    [
        'header' => 'ID',
        'value' => 'message_id',
        'options' => ['width' => '50px;']
    ],
    [
        'header' => '批次号',
        'value' => 'message_code',
        'options' => ['width' => '50px;'],
    ],
    [
        'header' => '发送时间',
        'value' => 'send_time',
        'format' => ['date', 'php:Y-m-d H:i:s'],
        'options' => ['width' => '150px;'],
    ],
    [
        'header' => '短信内容',
        'value' => 'content',
        'options' => ['width' => '150px;'],
    ],
    [
        'header' => '数量',
        'value' => 'count',
        'options' => ['width' => '50px;']
    ],
    [
        'label' => '状态',
        'value' => 'status',
        'options' => ['width' => '80px;'],
        'content' => function($model){
            return Yii::$app->params['send_status'][$model['status']];
        },

    ],
    [
        'label' => '创建时间',
        'value' => 'create_time',
        'options' => ['width' => '150px;'],
        'format' =>  ['date', 'php:Y-m-d H:i:s']
    ],
    [
        'class' => 'yii\grid\ActionColumn',
        'header' => '操作',
        'template' => '{view}',
        'options' => ['width' => '100px;'],
        'buttons' => [
            'view' => function ($url, $model, $key) {
                return Html::a('<i class="fa fa-eye"></i>', ['detail', 'pid'=>$key], [
                    'title' => Yii::t('app', '详细信息'),
                    'class' => 'btn btn-xs blue'
                ]);
            },
        ],
        'headerOptions' => [],
    ],
];

?>

<div class="portlet light portlet-fit portlet-datatable bordered">
    <div class="portlet-title">
        <div class="caption">
            <i class="icon-settings font-dark"></i>
            <span class="caption-subject font-dark sbold uppercase">短信列表</span>
        </div>
        <div class="actions">
            <div class="btn-group btn-group-devided">
                <?=Html::a('清空搜索 <i class="fa fa-times"></i>',['message/index'],['class'=>'btn green','style'=>'margin-right:10px;'])?>
            </div>
        </div>
    </div>
    <div class="portlet-body">
        <?php \yii\widgets\Pjax::begin(['options'=>['id'=>'pjax-container']]); ?>
        <div>
            <?php echo $this->render('_search', ['model' => $searchModel]); ?> <!-- 条件搜索-->
        </div>
        <div class="table-container">
            <form class="ids">
            <?= GridView::widget([
                'dataProvider' => $dataProvider, // 列表数据
                'filterModel' => $searchModel, // 搜索模型
                'options' => ['class' => 'grid-view table-scrollable'],
                /* 表格配置 */
                'tableOptions' => ['class' => 'table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer'],
                /* 重新排版 摘要、表格、分页 */
                'layout' => '{items}<div class=""><div class="col-md-5 col-sm-5">{summary}</div><div class="col-md-7 col-sm-7"><div class="dataTables_paginate paging_bootstrap_full_number" style="text-align:right;">{pager}</div></div></div>',
                /* 配置摘要 */
                'summaryOptions' => ['class' => 'pagination'],
                /* 配置分页样式 */
                'pager' => [
                    'options' => ['class'=>'pagination','style'=>'visibility: visible;'],
                    'nextPageLabel' => '>>',
                    'prevPageLabel' => '<<',
                    'firstPageLabel' => '首页',
                    'lastPageLabel' => '尾页',
                    'maxButtonCount'=> 5
                ],
                /* 定义列表格式 */
                'columns' => $columns,
            ]); ?>
            </form>
        </div>
        <?php \yii\widgets\Pjax::end(); ?>
    </div>
</div>


<!-- 定义数据块 -->
<?php $this->beginBlock('test'); ?>
jQuery(document).ready(function() {
    highlight_subnav('message/index'); //子导航高亮
});
<?php $this->endBlock() ?>
<!-- 将数据块 注入到视图中的某个位置 -->
<?php $this->registerJs($this->blocks['test'], \yii\web\View::POS_END); ?>
