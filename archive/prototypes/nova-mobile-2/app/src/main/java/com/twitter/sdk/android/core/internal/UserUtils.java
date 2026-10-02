package com.twitter.sdk.android.core.internal;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.User;

/* loaded from: classes.dex */
public final class UserUtils {

    /* renamed from: com.twitter.sdk.android.core.internal.UserUtils$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize;

        static {
            int[] iArr = new int[AvatarSize.values().length];
            $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize = iArr;
            try {
                iArr[AvatarSize.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.BIGGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.MINI.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.ORIGINAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[AvatarSize.REASONABLY_SMALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum AvatarSize {
        NORMAL("_normal"),
        BIGGER("_bigger"),
        MINI("_mini"),
        ORIGINAL("_original"),
        REASONABLY_SMALL("_reasonably_small");

        private final String suffix;

        AvatarSize(String str) {
            this.suffix = str;
        }

        public String getSuffix() {
            return this.suffix;
        }
    }

    private UserUtils() {
    }

    public static CharSequence formatScreenName(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return "";
        }
        if (charSequence.charAt(0) == '@') {
            return charSequence;
        }
        return "@" + ((Object) charSequence);
    }

    public static String getProfileImageUrlHttps(User user, AvatarSize avatarSize) {
        String str;
        if (user == null || (str = user.profileImageUrlHttps) == null) {
            return null;
        }
        if (avatarSize == null || str == null) {
            return str;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$twitter$sdk$android$core$internal$UserUtils$AvatarSize[avatarSize.ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? str.replace(AvatarSize.NORMAL.getSuffix(), avatarSize.getSuffix()) : str;
    }
}
