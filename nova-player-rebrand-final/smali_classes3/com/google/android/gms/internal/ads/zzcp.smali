.class public abstract Lcom/google/android/gms/internal/ads/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzco;


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/ads/zzcl;

.field protected zzc:Lcom/google/android/gms/internal/ads/zzcl;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcl;

.field private zze:Lcom/google/android/gms/internal/ads/zzcl;

.field private zzf:Ljava/nio/ByteBuffer;

.field private zzg:Ljava/nio/ByteBuffer;

.field private zzh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    return-void
.end method


# virtual methods
.method public synthetic zza(J)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzco$-CC;->$default$zza(Lcom/google/android/gms/internal/ads/zzco;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcp;->zzm(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzc()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    return-object p1
.end method

.method public zzc()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzn()V

    return-void
.end method

.method public zzf()Ljava/nio/ByteBuffer;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public zzg()Z
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcm;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzo()V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzco;->zza:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzh:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzd:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zze:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzc:Lcom/google/android/gms/internal/ads/zzcl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcp;->zzp()V

    return-void
.end method

.method protected final zzk(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzf:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method protected final zzl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcp;->zzg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method protected abstract zzm(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
.end method

.method protected zzn()V
    .locals 0

    .line 0
    return-void
.end method

.method protected zzo()V
    .locals 0

    .line 0
    return-void
.end method

.method protected zzp()V
    .locals 0

    .line 0
    return-void
.end method
