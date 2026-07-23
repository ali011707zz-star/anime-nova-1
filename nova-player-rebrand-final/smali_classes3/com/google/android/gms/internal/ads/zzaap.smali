.class final Lcom/google/android/gms/internal/ads/zzaap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaar;

.field private zzc:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzb:Lcom/google/android/gms/internal/ads/zzaar;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzc:Z

    return-void
.end method

.method final synthetic zzb()Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zza:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzb:Lcom/google/android/gms/internal/ads/zzaar;

    return-object v0
.end method

.method final synthetic zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzc:Z

    return v0
.end method
