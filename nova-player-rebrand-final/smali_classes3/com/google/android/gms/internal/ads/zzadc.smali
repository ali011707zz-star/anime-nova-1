.class final synthetic Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzadl;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzv;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzio;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzadl;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadc;->zza:Lcom/google/android/gms/internal/ads/zzadl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadl;->zzm(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzio;)V

    return-void
.end method
