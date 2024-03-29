/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:playground/modules/examples/models/example_loading_descriptors/example_loading_descriptor.dart';
import 'package:playground/modules/examples/models/example_origin.dart';

class StandardExampleLoadingDescriptor extends ExampleLoadingDescriptor {
  final String path;

  const StandardExampleLoadingDescriptor({
    required this.path,
  });

  @override
  ExampleOrigin get origin => ExampleOrigin.standard;

  @override
  String toString() => '$origin-$path';

  @override
  int get hashCode => path.hashCode;

  @override
  bool operator ==(Object other) {
    return other is StandardExampleLoadingDescriptor && path == other.path;
  }

  // Only ContentExampleLoadingDescriptor is serialized now.
  @override
  Map<String, dynamic> toJson() => throw UnimplementedError();
}
