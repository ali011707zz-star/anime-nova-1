.class final Lcom/google/common/collect/Iterators$ArrayItr;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayItr"
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1080
    new-instance v0, Lcom/google/common/collect/Iterators$ArrayItr;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Iterators$ArrayItr;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/Iterators$ArrayItr;->EMPTY:Lcom/google/common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    .line 1085
    array-length v0, p1

    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 1086
    iput-object p1, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ArrayItr;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
