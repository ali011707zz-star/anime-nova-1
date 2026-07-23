.class public abstract Lcom/google/android/gms/common/util/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# direct methods
.method public static publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "world-readable shared preferences should only be used by apk"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
