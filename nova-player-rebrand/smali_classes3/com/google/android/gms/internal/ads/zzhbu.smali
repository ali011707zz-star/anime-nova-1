.class public abstract Lcom/google/android/gms/internal/ads/zzhbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbk;
    .locals 6

    .line 1
    const-string v0, "invalid keyset"

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhay;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhay;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhbl;->zzb()Lcom/google/android/gms/internal/ads/zzhql;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzhql;->zze([BLcom/google/android/gms/internal/ads/zzibb;)Lcom/google/android/gms/internal/ads/zzhql;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhql;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhqk;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhqb;->zza:Lcom/google/android/gms/internal/ads/zzhqb;

    if-eq v3, v4, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhqb;->zzb:Lcom/google/android/gms/internal/ads/zzhqb;

    if-eq v3, v4, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhqb;->zzc:Lcom/google/android/gms/internal/ads/zzhqb;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "keyset contains key material of type %s for type url %s"

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhqc;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqk;->zzb()Lcom/google/android/gms/internal/ads/zzhqc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhqc;->zza()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 12
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhbk;->zza(Lcom/google/android/gms/internal/ads/zzhql;)Lcom/google/android/gms/internal/ads/zzhbk;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 13
    :catch_0
    :try_start_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :catch_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 14
    :catch_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Parse keyset failed"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
