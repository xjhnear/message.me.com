<?php

namespace common\modelsgii;

use Yii;

/**
 * This is the model class for table "{{%message_list}}".
 *
 * @property integer $order_id
 * @property string $order_sn
 * @property integer $uid
 * @property string $name
 * @property string $tel
 * @property string $sfz
 * @property string $type
 * @property integer $aid
 * @property string $title
 * @property integer $province
 * @property integer $city
 * @property integer $area
 * @property integer $start_time
 * @property integer $end_time
 * @property integer $num
 * @property integer $pay_status
 * @property integer $pay_time
 * @property integer $pay_type
 * @property integer $pay_source
 * @property integer $create_time
 * @property integer $status
 */
class MessageList extends \common\core\BaseActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%message_list}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['phonenumbers', 'content', 'send_time', 'create_time'], 'required'],
            [['send_time', 'create_time', 'status'], 'integer'],
            [['phonenumbers', 'content'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'message_id' => 'Message ID',
            'phonenumbers' => 'Phonenumbers',
            'content' => 'Content',
            'send_time' => 'Send Time',
            'create_time' => 'Create Time',
            'status' => 'Status',
        ];
    }
}
