/**
 * @license
 * Copyright 2020 Google LLC. All Rights Reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * =============================================================================
 */

import {KernelConfig, Sin} from '@tensorflow/tfjs-core';

import {CHECK_NAN_SNIPPET_UNARY, unaryKernelFunc} from '../kernel_utils/kernel_funcs_utils';

const SIN = CHECK_NAN_SNIPPET_UNARY + `
  return sin(x);
`;

export const sin = unaryKernelFunc(SIN);

export const sinConfig: KernelConfig = {
  kernelName: Sin,
  backendName: 'webgl',
  kernelFunc: sin,
};