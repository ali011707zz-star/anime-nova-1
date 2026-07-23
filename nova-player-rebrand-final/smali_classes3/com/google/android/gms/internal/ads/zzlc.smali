.class public final Lcom/google/android/gms/internal/ads/zzlc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public zza:Lcom/google/android/gms/internal/ads/zzmd;

.field public zzb:I

.field public zzc:Z

.field public zzd:I

.field private zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    or-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzb:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzmd;)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    return-void
.end method

.method public final zzc(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzc:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlc;->zzd:I

    return-void
.end method

.method final synthetic zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlc;->zze:Z

    return v0
.end method
