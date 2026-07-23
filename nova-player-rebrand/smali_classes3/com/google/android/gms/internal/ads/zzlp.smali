.class final synthetic Lcom/google/android/gms/internal/ads/zzlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzlq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzguc;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzguc;Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzlq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzguc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Lcom/google/android/gms/internal/ads/zzwk;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzguc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlp;->zzc:Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlq;->zzz(Lcom/google/android/gms/internal/ads/zzguc;Lcom/google/android/gms/internal/ads/zzwk;)V

    return-void
.end method
