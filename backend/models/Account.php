<?php

namespace backend\models;

use Yii;

/**
 * ---------------------------------------
 * 文章模型
 * ---------------------------------------
 */
class Account extends \common\modelsgii\Account
{

    public function rules()
    {
        return [
            [['c_date', 'create_time'], 'required'],
            [['recharge_count', 'create_time', 'consume_count', 'fail_count'], 'integer'],
            [['c_date'], 'string'],
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
