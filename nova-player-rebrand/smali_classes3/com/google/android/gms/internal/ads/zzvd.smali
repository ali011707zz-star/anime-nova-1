.class final synthetic Lcom/google/android/gms/internal/ads/zzvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzvf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvd;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzvg;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvd;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
