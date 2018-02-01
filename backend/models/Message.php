<?php

namespace backend\models;

use Yii;

/**
 * ---------------------------------------
 * 文章模型
 * ---------------------------------------
 */
class Message extends \common\modelsgii\MessageList
{

    public function rules()
    {
        return [
            [['phonenumbers', 'content', 'send_time', 'create_time'], 'required'],
            [['send_time', 'create_time', 'status'], 'integer'],
            [['phonenumbers', 'content'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            /* 在rules验证前，时间自动完成 */
            [
                'class' => 'yii\behaviors\AttributeBehavior',
                'attributes' => [
                    static::EVENT_BEFORE_VALIDATE => 'create_time',
                ],
                'value' => time(),
            ],
        ];
    }
}
