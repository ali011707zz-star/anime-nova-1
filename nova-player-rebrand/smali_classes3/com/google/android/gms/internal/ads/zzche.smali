.class final Lcom/google/android/gms/internal/ads/zzche;
.super Lcom/google/android/gms/internal/ads/zzatf;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field static final zzb:Lcom/google/android/gms/internal/ads/zzche;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzche;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzche;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzche;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatf;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzatj;
    .locals 0

    .line 1
    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzatl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatl;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    return-object p1

    .line 3
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzatn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzatn;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
