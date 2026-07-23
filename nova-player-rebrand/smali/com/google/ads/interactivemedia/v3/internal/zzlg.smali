.class public final Lcom/google/ads/interactivemedia/v3/internal/zzlg;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "init_without_write"

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlg;->zzc(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "crash_without_write"

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzlg;->zzc(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "admob"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method
