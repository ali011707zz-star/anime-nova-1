package io.wax911.support.twitter;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterConfig;
import io.wax911.support.common.extension.CommonExtKt;
import jc.l;
import vb.h;

/* compiled from: TwitterInitProvider.kt */
/* loaded from: classes.dex */
public final class TwitterInitProvider extends ContentProvider {
    private final void initTwitter(Context context) {
        String metaValue = context == null ? null : CommonExtKt.getMetaValue(context, R.string.io_wax911_support_twitterConsumerKey);
        String metaValue2 = context != null ? CommonExtKt.getMetaValue(context, R.string.io_wax911_support_twitterConsumerSecret) : null;
        if (metaValue != null) {
            if (!(metaValue.length() > 0) || metaValue2 == null) {
                return;
            }
            if (metaValue2.length() > 0) {
                Twitter.initialize(new TwitterConfig.Builder(context).twitterAuthConfig(new TwitterAuthConfig(metaValue, metaValue2)).build());
            }
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        l.f(uri, "uri");
        throw new h(l.m("An operation is not implemented: ", "not implemented"));
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        l.f(uri, "uri");
        throw new h(l.m("An operation is not implemented: ", "not implemented"));
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        l.f(uri, "uri");
        throw new h(l.m("An operation is not implemented: ", "not implemented"));
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        initTwitter(context == null ? null : context.getApplicationContext());
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        l.f(uri, "uri");
        throw new h(l.m("An operation is not implemented: ", "not implemented"));
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.f(uri, "uri");
        throw new h(l.m("An operation is not implemented: ", "not implemented"));
    }
}
