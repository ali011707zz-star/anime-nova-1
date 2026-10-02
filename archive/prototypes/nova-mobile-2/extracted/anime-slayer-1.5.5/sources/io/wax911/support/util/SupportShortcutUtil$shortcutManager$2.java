package io.wax911.support.util;

import android.content.pm.ShortcutManager;
import ic.a;
import jc.m;

/* compiled from: SupportShortcutUtil.kt */
/* loaded from: classes.dex */
public final class SupportShortcutUtil$shortcutManager$2 extends m implements a<ShortcutManager> {
    public final /* synthetic */ SupportShortcutUtil this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportShortcutUtil$shortcutManager$2(SupportShortcutUtil supportShortcutUtil) {
        super(0);
        this.this$0 = supportShortcutUtil;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // ic.a
    public final ShortcutManager invoke() {
        return (ShortcutManager) this.this$0.getContext().getSystemService(ShortcutManager.class);
    }
}
