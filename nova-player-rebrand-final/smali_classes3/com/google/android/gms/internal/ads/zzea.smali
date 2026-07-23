.class final Lcom/google/android/gms/internal/ads/zzea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzr;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:Lcom/google/android/gms/internal/ads/zzr;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzea;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdy;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzd:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzr;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzd:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzr;->zzb()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzr;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzr;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:Lcom/google/android/gms/internal/ads/zzr;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzs;)V

    :cond_0
    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdz;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzd:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzea;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzea;->zzb:Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzr;->zzb()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzs;)V

    :cond_0
    return-void
.end method
