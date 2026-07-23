.class final synthetic Lcom/google/android/gms/internal/ads/zzanz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzanz;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzanz;->zza:Lcom/google/android/gms/internal/ads/zzanz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzanq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanq;

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzanq;->zzb:J

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzanq;->zzb:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
