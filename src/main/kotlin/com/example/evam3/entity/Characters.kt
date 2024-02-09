package com.example.evam3.entity

import jakarta.persistence.*
import java.math.BigDecimal

@Entity
@Table(name="character")
class Characters {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(updatable = false)
    var id: Long? = null
    var description: String? = null
    var cost: BigDecimal? = null
    @Column(name = "actor_name")
    var actorName: String? = null
    var power: String? = null
    var age: Long? = null
    var nationality: String? = null
    @Column(name = "scene_id")
    var sceneId: Long? = null
}