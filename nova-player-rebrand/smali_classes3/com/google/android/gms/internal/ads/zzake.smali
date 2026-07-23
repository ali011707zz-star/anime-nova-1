.class final Lcom/google/android/gms/internal/ads/zzake;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakb;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfv;Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzake;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v0

    const-string v1, "audio/raw"

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)I

    move-result v1

    mul-int/2addr v1, p2

    if-eqz v0, :cond_0

    .line 4
    rem-int p2, v0, v1

    if-eqz p2, :cond_1

    .line 5
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p2, p2, 0x42

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr p2, v2

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", stsz sample size: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BoxParsers"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zza:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzake;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzb:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zza:I

    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zza:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzake;->zzc:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v0

    :cond_0
    return v0
.end method
