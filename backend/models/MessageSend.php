<?php

namespace backend\models;

use Yii;

/**
 * ---------------------------------------
 * 文章模型
 * ---------------------------------------
 */
class MessageSend extends \common\modelsgii\MessageSend
{

    public function rules()
    {
        return [
            [['message_id', 'message_did', 'task_id', 'operator', 'channel_id', 'status', 'return_time'], 'integer'],
            [['phonenumber', 'errorcode', 'extno'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            /* 在rules验证前，时间自动完成 */
//            [
//                'class' => 'yii\behaviors\AttributeBehavior',
//                'attributes' => [
//                    static::EVENT_BEFORE_VALIDATE => 'create_time',
//                ],
//                'value' => time(),
//            ],
        ];
    }
}
