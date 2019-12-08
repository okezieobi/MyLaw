import protocol from '../helpers/response';
import checkRequest from '../helpers/requests';

export default class Talks {
  static validateCreateData({ body }, res, next) {
    const {
      speaker, topic, dateAndTime, venue,
    } = body;
    const checkSpeakerName = checkRequest.validateLetters(speaker, 'Speaker');
    const checkTopic = checkRequest.validateLetters(topic, 'Topic');
    const checkDateAndTime = checkRequest.validateDateAndTime(dateAndTime, 'Date and time');
    const checkVenue = checkRequest.validateLetters(venue, 'Venue');
    const findError = checkRequest.checkValue(checkSpeakerName, checkTopic,
      checkDateAndTime, checkVenue);
    if (findError) protocol.err400Res(res, findError);
    else next();
  }
}
