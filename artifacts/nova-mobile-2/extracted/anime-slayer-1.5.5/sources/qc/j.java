package qc;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;

/* compiled from: Regex.kt */
/* loaded from: classes2.dex */
public final class j {
    public static final g c(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new h(matcher, charSequence);
        }
        return null;
    }

    public static final nc.e d(MatchResult matchResult, int i10) {
        return nc.g.i(matchResult.start(i10), matchResult.end(i10));
    }
}
