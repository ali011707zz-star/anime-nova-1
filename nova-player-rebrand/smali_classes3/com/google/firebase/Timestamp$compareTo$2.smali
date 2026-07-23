.class final synthetic Lcom/google/firebase/Timestamp$compareTo$2;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "Timestamp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/Timestamp$compareTo$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/firebase/Timestamp$compareTo$2;

    invoke-direct {v0}, Lcom/google/firebase/Timestamp$compareTo$2;-><init>()V

    sput-object v0, Lcom/google/firebase/Timestamp$compareTo$2;->INSTANCE:Lcom/google/firebase/Timestamp$compareTo$2;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 0
    const-string v0, "getNanoseconds()I"

    const/4 v1, 0x0

    const-class v2, Lcom/google/firebase/Timestamp;

    const-string v3, "nanoseconds"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Lcom/google/firebase/Timestamp;

    invoke-virtual {p1}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
