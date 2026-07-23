.class public abstract Lcom/google/android/gms/internal/ads/zzhya;
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

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhiu;->zza()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zzc:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhui;->zza:Lcom/google/android/gms/internal/ads/zzhui;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zzd:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhui;->zzb:Lcom/google/android/gms/internal/ads/zzhui;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxn;->zze:Lcom/google/android/gms/internal/ads/zzhxn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhui;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zza(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhit;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhit;->zzb()Lcom/google/android/gms/internal/ads/zzhiu;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhya;->zza:Lcom/google/android/gms/internal/ads/zzhiu;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhya;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhya;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhuo;)Lcom/google/android/gms/internal/ads/zzhbs;
    .locals 10

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zze(Lcom/google/android/gms/internal/ads/zzhuo;)Lcom/google/android/gms/internal/ads/zzhbs;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuo;->zzd()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuo;->zzf()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhuk;->zzd()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuo;->zzf()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhxz;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhya;->zza:Lcom/google/android/gms/internal/ads/zzhiu;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuk;->zzf()Lcom/google/android/gms/internal/ads/zzhui;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhxn;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuk;->zzg()Lcom/google/android/gms/internal/ads/zzhui;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhxn;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuk;->zzh()I

    move-result v5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuo;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v6

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuo;->zzf()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhuk;->zze()Lcom/google/android/gms/internal/ads/zzhuj;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhuj;->zzc:Lcom/google/android/gms/internal/ads/zzhuj;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzhya;->zzc:[B

    :goto_0
    move-object v7, p0

    goto :goto_1

    .line 12
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhya;->zzb:[B

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    move-object v9, v4

    move-object v4, v3

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhxz;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/android/gms/internal/ads/zzhxn;Lcom/google/android/gms/internal/ads/zzhxn;I[B[B[B)V

    return-object v1
.end method
