.class public final Lcom/google/android/gms/internal/ads/zzaig;
.super Lcom/google/android/gms/internal/ads/zzain;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:[Ljava/lang/String;

.field private final zze:[Lcom/google/android/gms/internal/ads/zzain;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzain;)V
    .locals 1

    .line 1
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaig;->zze:[Lcom/google/android/gms/internal/ads/zzain;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzaig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaig;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaig;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzd:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaig;->zzd:[Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zze:[Lcom/google/android/gms/internal/ads/zzain;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaig;->zze:[Lcom/google/android/gms/internal/ads/zzain;

    .line 4
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzb:Z

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaig;->zza:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaig;->zzc:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
