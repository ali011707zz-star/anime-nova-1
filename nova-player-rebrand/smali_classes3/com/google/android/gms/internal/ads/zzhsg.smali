.class public final Lcom/google/android/gms/internal/ads/zzhsg;
.super Lcom/google/android/gms/internal/ads/zzhuu;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhse;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhsc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhsd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhsf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhse;Lcom/google/android/gms/internal/ads/zzhsc;Lcom/google/android/gms/internal/ads/zzhsd;Lcom/google/android/gms/internal/ads/zzhsf;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhuu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhsb;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhsb;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhsg;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhsg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Lcom/google/android/gms/internal/ads/zzhsg;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x27

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ECDSA Parameters (variant: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hashType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", encoding: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curve: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsf;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhse;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zza:Lcom/google/android/gms/internal/ads/zzhse;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhsc;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzb:Lcom/google/android/gms/internal/ads/zzhsc;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhsd;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzc:Lcom/google/android/gms/internal/ads/zzhsd;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhsf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsg;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    return-object v0
.end method
