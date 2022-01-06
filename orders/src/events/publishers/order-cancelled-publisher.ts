import { Subjects, Publisher, OrderCancelledEvent } from '@scticketing/common';

export class OrderCancelledPublisher extends Publisher<OrderCancelledEvent> {
  subject: Subjects.OrderCancelled = Subjects.OrderCancelled;
}
