package com.test.portal4u.newsletter.subscribe;

import lombok.Data;

@Data
public class SubscriberDTO {
    private int seqSubscriber;
    private String name;
    private String email;
    private String subscriptionDate;
    private String subscriptionState;
    private String subscriptionExcept;
}
