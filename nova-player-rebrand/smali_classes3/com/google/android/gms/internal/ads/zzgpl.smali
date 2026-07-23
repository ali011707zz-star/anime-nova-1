.class final synthetic Lcom/google/android/gms/internal/ads/zzgpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgpo;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgpq;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgpt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zzb:Lcom/google/android/gms/internal/ads/zzgpq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zzc:Lcom/google/android/gms/internal/ads/zzgpt;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zza:Lcom/google/android/gms/internal/ads/zzgpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zzb:Lcom/google/android/gms/internal/ads/zzgpq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpl;->zzc:Lcom/google/android/gms/internal/ads/zzgpt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgpo;->zze(Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V

    return-void
.end method
