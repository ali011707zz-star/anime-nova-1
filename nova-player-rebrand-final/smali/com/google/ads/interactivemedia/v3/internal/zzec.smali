.class final Lcom/google/ads/interactivemedia/v3/internal/zzec;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzeg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzeg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzec;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzec;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzeg;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zzd()Ljava/util/concurrent/Future;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzeg;->zze(Ljava/util/concurrent/Future;)V

    return-void
.end method
