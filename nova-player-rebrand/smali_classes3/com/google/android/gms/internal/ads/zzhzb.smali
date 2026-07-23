.class final Lcom/google/android/gms/internal/ads/zzhzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzhzb;

.field zzb:Lcom/google/android/gms/internal/ads/zzhzb;

.field zzc:Lcom/google/android/gms/internal/ads/zzhzb;

.field zzd:Lcom/google/android/gms/internal/ads/zzhzb;

.field zze:Lcom/google/android/gms/internal/ads/zzhzb;

.field final zzf:Ljava/lang/Object;

.field final zzg:Z

.field zzh:Ljava/lang/Object;

.field zzi:I


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzg:Z

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zze:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    return-void
.end method

.method constructor <init>(ZLcom/google/android/gms/internal/ads/zzhzb;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhzb;Lcom/google/android/gms/internal/ads/zzhzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zza:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzg:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzi:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zze:Lcom/google/android/gms/internal/ads/zzhzb;

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzhzb;->zzd:Lcom/google/android/gms/internal/ads/zzhzb;

    .line 2
    iput-object p0, p4, Lcom/google/android/gms/internal/ads/zzhzb;->zze:Lcom/google/android/gms/internal/ads/zzhzb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzg:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzf:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzb;->zzh:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
