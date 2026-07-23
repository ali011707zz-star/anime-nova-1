.class public final Lcom/google/ads/interactivemedia/v3/internal/zzhc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static final zza(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string p4, "0.460000000"

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzbk;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zzb(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    .line 3
    invoke-virtual {v0, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zza(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zzd(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p1, 0x3e8

    div-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zzf(J)Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    div-long/2addr p3, p1

    invoke-virtual {v0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zzc(J)Lcom/google/ads/interactivemedia/v3/internal/zzbj;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 8
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzbj;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    .line 9
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbj;->zze(J)Lcom/google/ads/interactivemedia/v3/internal/zzbj;

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzbk;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zzc([BLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzbq;

    move-result-object p0

    const/4 p1, 0x5

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbq;->zzc(I)Lcom/google/ads/interactivemedia/v3/internal/zzbq;

    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbq;->zzd(I)Lcom/google/ads/interactivemedia/v3/internal/zzbq;

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    .line 14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object p0

    const/16 p1, 0xb

    .line 15
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    const/4 p0, 0x7

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
