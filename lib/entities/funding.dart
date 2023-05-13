// Copyright 2020-2022 Ben Hills. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:anytime/core/extensions.dart';
import 'package:meta/meta.dart';

/// A class that represents and individual funding option that may be
/// part of a [Podcast].
///
/// Part of the [podcast namespace](https://github.com/Podcastindex-org/podcast-namespace)
class Funding {
  /// The URL to the funding/donation/information page.
  final String url;

  /// The label for the link which will be presented to the user.
  final String value;

  Funding({
    @required String url,
    this.value,
  }) : url = url?.forceHttps;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'value': value,
    };
  }

  static Funding fromMap(Map<String, dynamic> chapter) {
    return Funding(
      url: chapter['url'] as String,
      value: chapter['value'] as String,
    );
  }
}
