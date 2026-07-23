.class public final Lcom/google/android/gms/internal/ads/zzhmk;
.super Lcom/google/android/gms/internal/ads/zzhmn;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhmj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhmi;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzhmj;Lcom/google/android/gms/internal/ads/zzhmi;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhmn;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhmh;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhmk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhmk;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    if-ne v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhmk;->zze()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmk;->zze()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Lcom/google/android/gms/internal/ads/zzhmk;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v2, 0x26

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HMAC Parameters (variant: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zza:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    return v0
.end method

.method public final zze()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zzd:Lcom/google/android/gms/internal/ads/zzhmj;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zza:Lcom/google/android/gms/internal/ads/zzhmj;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    if-ne v0, v1, :cond_3

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzb:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhmj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzc:Lcom/google/android/gms/internal/ads/zzhmj;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhmi;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmk;->zzd:Lcom/google/android/gms/internal/ads/zzhmi;

    return-object v0
.end method
