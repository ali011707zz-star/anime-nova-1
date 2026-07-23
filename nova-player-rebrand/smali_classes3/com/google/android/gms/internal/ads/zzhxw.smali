.class public abstract Lcom/google/android/gms/internal/ads/zzhxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbs;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzhiu;

.field private static final zzb:[B

.field private static final zzc:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhxw;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhxw;->zzc:[B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhiu;->zza()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zzc:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtw;->zza:Lcom/google/android/gms/internal/ads/zzhtw;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zzd:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtw;->zzb:Lcom/google/android/gms/internal/ads/zzhtw;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zze:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhtw;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhit;->zzb()Lcom/google/android/gms/internal/ads/zzhiu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhxw;->zza:Lcom/google/android/gms/internal/ads/zzhiu;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhuc;)Lcom/google/android/gms/internal/ads/zzhbs;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhvz;->zzd(Lcom/google/android/gms/internal/ads/zzhuc;)Lcom/google/android/gms/internal/ads/zzhbs;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxe;->zzf:Lcom/google/android/gms/internal/ads/zzhxe;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 3
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuc;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuc;->zzf()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhty;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhxv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxw;->zza:Lcom/google/android/gms/internal/ads/zzhiu;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuc;->zzf()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhty;->zzf()Lcom/google/android/gms/internal/ads/zzhtw;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhxn;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuc;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuc;->zzf()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhty;->zze()Lcom/google/android/gms/internal/ads/zzhtx;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtx;->zzc:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhxw;->zzc:[B

    :goto_0
    move-object v5, p0

    goto :goto_1

    .line 9
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhxw;->zzb:[B

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhxv;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhxn;[B[B[B)V

    return-object v1
.end method
