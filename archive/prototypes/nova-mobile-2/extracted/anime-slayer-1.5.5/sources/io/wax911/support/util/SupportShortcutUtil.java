package io.wax911.support.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutManager;
import android.os.Bundle;
import jc.l;
import org.apache.http.impl.auth.NTLMEngineImpl;
import vb.e;
import vb.f;

/* compiled from: SupportShortcutUtil.kt */
@TargetApi(25)
/* loaded from: classes.dex */
public abstract class SupportShortcutUtil {
    private final Context context;
    private final e shortcutManager$delegate = f.a(new SupportShortcutUtil$shortcutManager$2(this));

    /* compiled from: SupportShortcutUtil.kt */
    /* loaded from: classes.dex */
    public interface SupportShortcutBuilder {

        /* compiled from: SupportShortcutUtil.kt */
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            public static SupportShortcutBuilder build(SupportShortcutBuilder supportShortcutBuilder) {
                l.f(supportShortcutBuilder, "this");
                return supportShortcutBuilder;
            }

            public static SupportShortcutBuilder setShortcutParams(SupportShortcutBuilder supportShortcutBuilder, Bundle bundle) {
                l.f(supportShortcutBuilder, "this");
                l.f(bundle, "params");
                supportShortcutBuilder.setParams(bundle);
                return supportShortcutBuilder;
            }

            public static SupportShortcutBuilder setShortcutType(SupportShortcutBuilder supportShortcutBuilder, int i10) {
                l.f(supportShortcutBuilder, "this");
                supportShortcutBuilder.m8setShortcutType(i10);
                return supportShortcutBuilder;
            }
        }

        SupportShortcutBuilder build();

        Bundle getParams();

        int getShortcutType();

        void setParams(Bundle bundle);

        SupportShortcutBuilder setShortcutParams(Bundle bundle);

        SupportShortcutBuilder setShortcutType(int i10);

        /* renamed from: setShortcutType, reason: collision with other method in class */
        void m8setShortcutType(int i10);
    }

    private SupportShortcutUtil(Context context) {
        this.context = context;
    }

    public final <S> Intent createIntentAction(Class<S> cls, Bundle bundle) {
        l.f(cls, "targetActivity");
        l.f(bundle, "param");
        Intent intent = new Intent(this.context, (Class<?>) cls);
        intent.putExtras(bundle);
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN);
        return intent;
    }

    public abstract void createShortcuts(SupportShortcutBuilder... supportShortcutBuilderArr);

    public abstract void disableShortcuts(int... iArr);

    public abstract void enableShortcuts(int... iArr);

    public final Context getContext() {
        return this.context;
    }

    public final ShortcutManager getShortcutManager() {
        Object value = this.shortcutManager$delegate.getValue();
        l.e(value, "<get-shortcutManager>(...)");
        return (ShortcutManager) value;
    }

    public abstract void reportShortcutUsage(int i10);
}
