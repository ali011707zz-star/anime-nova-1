.class public final Lcom/google/android/gms/internal/ads/zzhmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhmi;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhmj;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zza:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzb:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhmj;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhmh;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhmk;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzb:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    if-eqz v1, :cond_d

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    if-eqz v1, :cond_c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_b

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzb:Ljava/lang/Integer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    const/16 v5, 0xa

    if-lt v1, v5, :cond_a

    .line 10
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmi;->zza:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne v4, v5, :cond_1

    const/16 v4, 0x14

    if-gt v1, v4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 13
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_1
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmi;->zzb:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne v4, v5, :cond_3

    const/16 v4, 0x1c

    if-gt v1, v4, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 16
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmi;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne v4, v5, :cond_5

    const/16 v4, 0x20

    if-gt v1, v4, :cond_4

    goto :goto_0

    .line 17
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 19
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmi;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne v4, v5, :cond_7

    const/16 v4, 0x30

    if-gt v1, v4, :cond_6

    goto :goto_0

    .line 20
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 22
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhmi;->zze:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne v4, v5, :cond_9

    const/16 v4, 0x40

    if-gt v1, v4, :cond_8

    .line 13
    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhmk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zza:Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzb:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zzc:Lcom/google/android/gms/internal/ads/zzhmi;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhmk;-><init>(IILcom/google/android/gms/internal/ads/zzhmj;Lcom/google/android/gms/internal/ads/zzhmi;[B)V

    return-object v5

    .line 24
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 25
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 26
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmh;->zza:Ljava/lang/Integer;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "Invalid key size in bytes %d; must be at least 16 bytes"

    .line 7
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
