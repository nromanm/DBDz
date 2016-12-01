<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Volunteer Entity
 *
 * @property int $id
 * @property string $rut_volunteer
 * @property int $task_id
 * @property int $user_id
 * @property string $name
 * @property string $last_name_first
 * @property string $last_name_second
 * @property int $age
 * @property string $residency
 * @property string $mail
 * @property bool $disponibility
 * @property string $performance_area
 * @property int $experience
 * @property string $phone
 * @property string $actual_ubication
 *
 * @property \App\Model\Entity\Task $task
 * @property \App\Model\Entity\User $user
 * @property \App\Model\Entity\Notification[] $notifications
 * @property \App\Model\Entity\Commune[] $communes
 * @property \App\Model\Entity\Skill[] $skills
 */
class Volunteer extends Entity
{

    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        '*' => true,
        'id' => false
    ];
}
