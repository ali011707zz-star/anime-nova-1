.class public final Lcom/google/android/gms/internal/ads/zzhcs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Ljava/lang/Integer;

.field private zzd:Ljava/lang/Integer;

.field private zze:Lcom/google/android/gms/internal/ads/zzhct;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhcu;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcu;->zzc:Lcom/google/android/gms/internal/ads/zzhcu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzf:Lcom/google/android/gms/internal/ads/zzhcu;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 3

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Ljava/lang/Integer;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 3

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Ljava/lang/Integer;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Ljava/lang/Integer;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhcu;)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzf:Lcom/google/android/gms/internal/ads/zzhcu;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhct;)Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhcv;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    if-eqz v1, :cond_b

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzf:Lcom/google/android/gms/internal/ads/zzhcu;

    if-eqz v1, :cond_a

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhct;->zza:Lcom/google/android/gms/internal/ads/zzhct;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 9
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 10
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhct;->zzb:Lcom/google/android/gms/internal/ads/zzhct;

    if-ne v2, v3, :cond_3

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 12
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhct;->zzc:Lcom/google/android/gms/internal/ads/zzhct;

    if-ne v2, v3, :cond_5

    const/16 v2, 0x20

    if-gt v1, v2, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 15
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhct;->zzd:Lcom/google/android/gms/internal/ads/zzhct;

    if-ne v2, v3, :cond_7

    const/16 v2, 0x30

    if-gt v1, v2, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 18
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 19
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhct;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    if-ne v2, v3, :cond_9

    const/16 v2, 0x40

    if-gt v1, v2, :cond_8

    .line 10
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzf:Lcom/google/android/gms/internal/ads/zzhcu;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhct;

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzhcv;-><init>(IIIILcom/google/android/gms/internal/ads/zzhcu;Lcom/google/android/gms/internal/ads/zzhct;[B)V

    return-object v6

    .line 21
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 22
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 23
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
