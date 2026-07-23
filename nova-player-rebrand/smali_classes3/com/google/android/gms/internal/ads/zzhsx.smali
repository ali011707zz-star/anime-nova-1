.class public final Lcom/google/android/gms/internal/ads/zzhsx;
.super Lcom/google/android/gms/internal/ads/zzhuw;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzd:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhsq;Lcom/google/android/gms/internal/ads/zzhye;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhuw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zza:Lcom/google/android/gms/internal/ads/zzhsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhsp;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsx;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzb(Lcom/google/android/gms/internal/ads/zzhsp;)Lcom/google/android/gms/internal/ads/zzhsq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsp;->zzd:Lcom/google/android/gms/internal/ads/zzhsp;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x3e

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "For given Variant "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " the value of idRequirement must be non-null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhye;->zzd()I

    move-result p0

    const/16 v2, 0x20

    if-ne p0, v2, :cond_8

    .line 4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhsx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkh;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzb:Lcom/google/android/gms/internal/ads/zzhsp;

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zzc:Lcom/google/android/gms/internal/ads/zzhsp;

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhsp;->zza:Lcom/google/android/gms/internal/ads/zzhsp;

    if-ne v1, v2, :cond_6

    .line 7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    goto :goto_3

    .line 6
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unknown Variant: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkh;->zza(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    .line 5
    :goto_3
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhsx;-><init>(Lcom/google/android/gms/internal/ads/zzhsq;Lcom/google/android/gms/internal/ads/zzhye;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)V

    return-object p0

    .line 3
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhye;->zzd()I

    move-result p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x41

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zza:Lcom/google/android/gms/internal/ads/zzhsq;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzb:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhsq;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsx;->zza:Lcom/google/android/gms/internal/ads/zzhsq;

    return-object v0
.end method
