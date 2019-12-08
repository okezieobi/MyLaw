import protocol from '../helpers/response';
import checkRequest from '../helpers/requests';

export default class Tickets {
  static validateCreateData({ body }, res, next) {
    const { talkId } = body;
    const checkTalkId = checkRequest.validateInteger(talkId, 'Talk id');
    if (checkTalkId) protocol.err400Res(res, checkTalkId);
    else next();
  }
}
