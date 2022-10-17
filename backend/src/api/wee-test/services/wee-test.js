'use strict';

/**
 * wee-test service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::wee-test.wee-test');
