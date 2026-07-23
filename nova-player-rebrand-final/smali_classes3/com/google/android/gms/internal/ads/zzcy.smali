.class final synthetic Lcom/google/android/gms/internal/ads/zzcy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcy;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcx;

    sget v0, Lcom/google/android/gms/internal/ads/zzcz;->$r8$clinit:I

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzp:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
