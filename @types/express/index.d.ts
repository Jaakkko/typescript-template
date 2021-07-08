import { Types } from 'mongoose'

declare global {
  namespace Express {
    interface Request {
      accountId: Types.ObjectId
      customerId: Types.ObjectId
    }
  }
}
