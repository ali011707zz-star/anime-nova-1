.class final Lcom/google/android/gms/internal/ads/zzhyw;
.super Lcom/google/android/gms/internal/ads/zzhza;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhyx;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhyx;->zza:Lcom/google/android/gms/internal/ads/zzhzc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhza;-><init>(Lcom/google/android/gms/internal/ads/zzhzc;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhza;->zza()Lcom/google/android/gms/internal/ads/zzhzb;

    move-result-object v0

    return-object v0
.end method
