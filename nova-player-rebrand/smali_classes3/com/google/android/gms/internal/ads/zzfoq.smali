.class final synthetic Lcom/google/android/gms/internal/ads/zzfoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfor;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfor;Lcom/google/android/gms/internal/ads/zzfoh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zzb:Lcom/google/android/gms/internal/ads/zzfoh;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zza:Lcom/google/android/gms/internal/ads/zzfor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfoq;->zzb:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfor;->zzc(Lcom/google/android/gms/internal/ads/zzfoh;)V

    return-void
.end method
