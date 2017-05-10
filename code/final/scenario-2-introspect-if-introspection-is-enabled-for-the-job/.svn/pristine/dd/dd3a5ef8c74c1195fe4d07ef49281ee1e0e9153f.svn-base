package poc.rubiconred.fusioncloud.ci.util.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.Stack;

public class Graph {

  public Vertex rootNode;
  public ArrayList<Vertex> vertices = new ArrayList<>();
  public int[][] adjMatrix; // Edges will be represented as adjacency Matrix
  int size;

  // all edges
  private List<Edge> edges;

  public Graph() {
    edges = new ArrayList<>();
  }

  public void addEdge(Edge edge) {
    getEdges().add(edge);
  }

  public void addVertice(DefaultVertex v) {
    getVertices().add(v);
  }

  public void setRootNode(Vertex vertex) {
    this.rootNode = vertex;
  }

  public Vertex getRootNode() {
    return this.rootNode;
  }

  public List<Edge> getEdges() {
    return edges;
  }

  public List<Vertex> getVertices() {
    return vertices;
  }

  public void connectNode() {
    for (Edge edge : edges) {
      connectNode(edge.getFromVertex(), edge.getToVertex());

      // ((DefaultVertex) edge.getFromVertex()).setToEdges(edge);
      // ((DefaultVertex) edge.getToVertex()).setFromEdges(edge);
    }
  }

  // This method will be called to make connect two nodes
  public void connectNode(Vertex start, Vertex end) {

    // update reachablity set
    // start.setReachable(end);

    if (adjMatrix == null) {
      size = vertices.size();
      adjMatrix = new int[size][size];
    }

    int startIndex = vertices.indexOf(start);
    int endIndex = vertices.indexOf(end);
    adjMatrix[startIndex][endIndex] = 1;
    adjMatrix[endIndex][startIndex] = 1;
  }

  private Vertex getUnvisitedChildNode(Vertex n) {

    int index = vertices.indexOf(n);
    int j = 0;
    while (j < size) {
      if (adjMatrix[index][j] == 1 && (vertices.get(j)).isVisited() == false) {
        return vertices.get(j);
      }
      j++;
    }
    return null;
  }

  private List<Vertex> getVisitedChildNodes(Vertex n) {

    List<Vertex> l = new ArrayList<>();

    int index = vertices.indexOf(n);
    int j = 0;
    while (j < size) {
      if (adjMatrix[index][j] == 1 && (vertices.get(j)).isVisited() == true && ifThisChildBelongToTargetNode(vertices.get(j), n)) {
        l.add(vertices.get(j));
      }
      j++;
    }
    return l;
  }

  private boolean ifThisChildBelongToTargetNode(Vertex child, Vertex subject) {
    Set<Edge> toEdges = ((DefaultVertex) subject).getToEdges();
    Set<Edge> fromEdges = ((DefaultVertex) subject).getFromEdges();

    // find if subject has pointer to child
    for (Iterator exIt = fromEdges.iterator(); exIt.hasNext();) {
      Edge edge1 = (Edge) exIt.next();
      for (Iterator intIt = toEdges.iterator(); intIt.hasNext();) {
        Edge edge2 = (Edge) intIt.next();
        if (haveSameElementOnBothEnd(edge1, edge2)) {
          return true;
        } else
          continue;
      }

    }
    return false;
    // find if child has pointer to subject

  }

  private boolean haveSameElementOnBothEnd(Edge edge1, Edge edge2) {
    Vertex fromVertexFromEdge1 = edge1.getFromVertex();
    Vertex toVertexFromEdge1 = edge1.getToVertex();
    Vertex fromVertexFromEdge2 = edge2.getFromVertex();
    Vertex toVertexFromEdge2 = edge2.getToVertex();

    return fromVertexFromEdge1.equals(toVertexFromEdge2) && toVertexFromEdge1.equals(fromVertexFromEdge2);
  }

  private Vertex getVisitedChildNode(Vertex n) {

    int index = vertices.indexOf(n);
    int j = 0;
    while (j < size) {
      if (adjMatrix[index][j] == 1 && (vertices.get(j)).isVisited() == true) {
        return vertices.get(j);
      }
      j++;
    }
    return null;
  }

  // BFS traversal of a tree is performed by the bfs() function
  public void bfs() {

    // BFS uses Queue data structure
    Queue<Vertex> q = new LinkedList<Vertex>();
    q.add(this.rootNode);
    printNode(this.rootNode);
    rootNode.setVisited(true);
    while (!q.isEmpty()) {
      Vertex n = q.remove();
      Vertex child = null;
      while ((child = getUnvisitedChildNode(n)) != null) {
        child.setVisited(true);
        System.out.println();
        printNode(child);
        q.add(child);
      }
    }
    // Clear visited property of nodes
    clearNodes();
  }

  // DFS traversal of a tree is performed by the dfs() function
  public void dfs() {
    // DFS uses Stack data structure
    Stack<Vertex> s = new Stack<>();
    s.push(this.rootNode);
    rootNode.setVisited(true);
    while (!s.isEmpty()) {
      Vertex n = s.peek();
      Vertex unvisitedChild = getUnvisitedChildNode(n);
      if (unvisitedChild != null) {
        System.out.println(n.getComparableProperty() + "-->" +unvisitedChild.getComparableProperty());
        unvisitedChild.setVisited(true);
        printNode(unvisitedChild);
        s.push(unvisitedChild);
      } else {
        s.pop();
      }
    }
    // Clear visited property of nodes
    clearNodes();
  }

  public static void printGraph(Graph g) {
    System.out.println("Vertices...");
    for (Vertex v : g.getVertices()) {
      System.out.print(v.getComparableProperty() + " ");
    }
    System.out.println("");
    System.out.println("Edges...");
    for (Edge e : g.getEdges()) {
      System.out.println(e);
    }
  }

  // Utility methods for printing the node's label
  private void printNode(Vertex n) {
    System.out.print(" visiting node " + n.getComparableProperty());
    System.out.println("");
  }

  // Utility methods for clearing visited property of node
  private void clearNodes() {
    int i = 0;
    while (i < size) {
      Vertex n = vertices.get(i);
      n.setVisited(false);
      i++;
    }
  }

}
