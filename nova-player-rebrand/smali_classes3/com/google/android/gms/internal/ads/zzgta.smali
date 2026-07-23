.class final Lcom/google/android/gms/internal/ads/zzgta;
.super Lcom/google/android/gms/internal/ads/zzgvz;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgqt;

.field final zzb:Lcom/google/android/gms/internal/ads/zzgvz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgqt;Lcom/google/android/gms/internal/ads/zzgvz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzgqt;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgvz;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgta;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgta;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgta;->zzb:Lcom/google/android/gms/internal/ads/zzgvz;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgta;->zza:Lcom/google/android/gms/internal/ads/zzgqt;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".onResultOf("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
