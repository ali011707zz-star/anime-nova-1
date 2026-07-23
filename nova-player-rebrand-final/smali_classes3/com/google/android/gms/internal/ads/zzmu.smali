.class public final Lcom/google/android/gms/internal/ads/zzmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzjf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzmq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zza:Lcom/google/android/gms/internal/ads/zzjf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaaj;)Lcom/google/android/gms/internal/ads/zzmu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zza:Lcom/google/android/gms/internal/ads/zzjf;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zze:Lcom/google/android/gms/internal/ads/zzgru;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzlj;)Lcom/google/android/gms/internal/ads/zzmu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zza:Lcom/google/android/gms/internal/ads/zzjf;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzw:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(Lcom/google/android/gms/internal/ads/zzlj;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzf:Lcom/google/android/gms/internal/ads/zzgru;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzmv;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmu;->zza:Lcom/google/android/gms/internal/ads/zzjf;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzw:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzjf;->zzw:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmv;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzmv;-><init>(Lcom/google/android/gms/internal/ads/zzjf;)V

    return-object v1
.end method
