import {
  Subjects,
  Publisher,
  ExpirationCompleteEvent,
} from '@scticketing/common';

export class ExpirationCompletePublisher extends Publisher<ExpirationCompleteEvent> {
  subject: Subjects.ExpirationComplete = Subjects.ExpirationComplete;
}
