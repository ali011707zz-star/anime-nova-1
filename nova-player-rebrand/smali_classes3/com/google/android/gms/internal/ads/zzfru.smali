.class final Lcom/google/android/gms/internal/ads/zzfru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsa;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfru;->zza:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfru;->zza:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzG()V

    return-void
.end method
