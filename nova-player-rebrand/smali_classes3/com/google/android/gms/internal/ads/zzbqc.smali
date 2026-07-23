.class final Lcom/google/android/gms/internal/ads/zzbqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbqf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqc;->zza:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqc;->zza:Lcom/google/android/gms/internal/ads/zzbqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqf;->zzb()V

    return-void
.end method
