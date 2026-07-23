.class final Lcom/google/android/gms/internal/ads/zzbft;
.super Lcom/google/android/gms/internal/ads/zzcen;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfz;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbft;->zza:Lcom/google/android/gms/internal/ads/zzbfz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbft;->zza:Lcom/google/android/gms/internal/ads/zzbfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfz;->zzb()V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzcen;->cancel(Z)Z

    move-result p1

    return p1
.end method
