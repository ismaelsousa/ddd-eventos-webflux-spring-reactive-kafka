package com.example.dddeventoswebflux.message

import org.springframework.kafka.core.KafkaTemplate
import org.springframework.stereotype.Component

@Component
class Publisher(
    private val kafkaTemplate: KafkaTemplate<String, String>
) {

    fun publish(event:String): String {
        kafkaTemplate.send("receive-event", event);
        return event
    }
}