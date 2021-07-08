import sourceMapSupport from 'source-map-support'
sourceMapSupport.install()

import './logger'

logger.http("Hello world")
logger.warn("Hello world")
logger.silly("Hello world")
logger.verbose("Hello world")
logger.info("Hello world")